# classes3.dex

.class public Lcom/tdo/showbox/http/ServerException;
.super Ljava/lang/RuntimeException;
.source "ServerException.java"


# instance fields
.field private errCode:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/tdo/showbox/http/ServerException;->errCode:I

    .line 10
    iput-object p2, p0, Lcom/tdo/showbox/http/ServerException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrCode()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/tdo/showbox/http/ServerException;->errCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/tdo/showbox/http/ServerException;->message:Ljava/lang/String;

    return-object v0
.end method
