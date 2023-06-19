# classes3.dex

.class public Lcom/tdo/showbox/http/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdo/showbox/http/ApiException$ERROR;
    }
.end annotation


# static fields
.field private static final BADREQUEST:I = 0x190

.field private static final BAD_GATEWAY:I = 0x1f6

.field private static final FORBIDDEN:I = 0x193

.field private static final GATEWAY_TIMEOUT:I = 0x1f8

.field private static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final METHOD_NOT_ALLOWED:I = 0x195

.field private static final NOT_FOUND:I = 0x194

.field private static final REQUEST_TIMEOUT:I = 0x198

.field private static final SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final UNAUTHORIZED:I = 0x191


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/tdo/showbox/http/ApiException;->code:I

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)Lcom/tdo/showbox/http/ApiException;
    .registers 4

    .line 46
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_27

    .line 47
    check-cast p0, Lretrofit2/HttpException;

    .line 48
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    invoke-virtual {p0}, Lretrofit2/HttpException;->code()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lretrofit2/HttpException;->code()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 52
    :cond_27
    instance-of v0, p0, Lcom/tdo/showbox/http/ServerException;

    if-eqz v0, :cond_3d

    .line 53
    check-cast p0, Lcom/tdo/showbox/http/ServerException;

    .line 54
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    invoke-virtual {p0}, Lcom/tdo/showbox/http/ServerException;->getErrCode()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    .line 55
    invoke-virtual {p0}, Lcom/tdo/showbox/http/ServerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 57
    :cond_3d
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONException;

    if-eqz v0, :cond_4d

    .line 58
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Parse error"

    .line 59
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 61
    :cond_4d
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_5d

    .line 62
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3ef

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "ClassCastException"

    .line 63
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 65
    :cond_5d
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_6d

    .line 66
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Connect failed"

    .line 67
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 69
    :cond_6d
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_7d

    .line 70
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Certificate validation failed"

    .line 71
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 73
    :cond_7d
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v1, "Connection timeout"

    const/16 v2, 0x3ed

    if-eqz v0, :cond_8d

    .line 74
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    invoke-direct {v0, p0, v2}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    .line 75
    iput-object v1, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 77
    :cond_8d
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_99

    .line 78
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    invoke-direct {v0, p0, v2}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    .line 79
    iput-object v1, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 81
    :cond_99
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_a9

    .line 82
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3f1

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Unable to resolve this domain name"

    .line 83
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 85
    :cond_a9
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_b9

    .line 86
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3f2

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "NullPointerException"

    .line 87
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 89
    :cond_b9
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_c9

    .line 90
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3f3

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Server connection error"

    .line 91
    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0

    .line 94
    :cond_c9
    new-instance v0, Lcom/tdo/showbox/http/ApiException;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/tdo/showbox/http/ApiException;-><init>(Ljava/lang/Throwable;I)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/tdo/showbox/http/ApiException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/tdo/showbox/http/ApiException;->message:Ljava/lang/String;

    return-object v0
.end method
