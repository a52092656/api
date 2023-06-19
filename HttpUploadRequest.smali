# classes3.dex

.class public final Lcom/tdo/showbox/http/HttpUploadRequest;
.super Ljava/lang/Object;
.source "HttpUploadRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B+\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`\u0005¢\u0006\u0002\u0010\u0006J,\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\f2\b\b\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u0016\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0001J*\u0010\u0014\u001a\u00020\u00002\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\tJ\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u001a\u0010\u0019\u001a\u00020\u00002\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001bH\u0007J\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001dR*\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"
    }
    d2 = {
        "Lcom/tdo/showbox/http/HttpUploadRequest;",
        "",
        "data",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "(Ljava/util/HashMap;)V",
        "formName",
        "mLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "mediaType",
        "uploadFile",
        "Ljava/io/File;",
        "addBaseParams",
        "module",
        "type",
        "file",
        "addParam",
        "key",
        "value",
        "addParams",
        "param",
        "bindLifecycle",
        "lifecycleOwner",
        "buildData",
        "executeUpload",
        "callback",
        "Lcom/tdo/showbox/http/ResponseCallback;",
        "executeUploadObservable",
        "Lio/reactivex/Observable;",
        "app_webRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private formName:Ljava/lang/String;

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mediaType:Ljava/lang/String;

.field private uploadFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/tdo/showbox/http/HttpUploadRequest;-><init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mediaType:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->formName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/tdo/showbox/http/HttpUploadRequest;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic addBaseParams$default(Lcom/tdo/showbox/http/HttpUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-string p2, "text/plain"

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_c

    const-string p4, "file"

    .line 41
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tdo/showbox/http/HttpUploadRequest;->addBaseParams(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpUploadRequest;

    move-result-object p0

    return-object p0
.end method

.method private final buildData()Ljava/lang/String;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->versionName:Ljava/lang/String;

    const-string v2, "App.versionName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "app_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Lcom/tdo/showbox/app/App;->getUserData()Lcom/tdo/showbox/model/user/UserModel$UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/tdo/showbox/model/user/UserModel$UserData;->uid:Ljava/lang/String;

    const-string v2, "App.getUserData().uid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->deviceToken:Ljava/lang/String;

    const-string v2, "App.deviceToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->deviceLang:Ljava/lang/String;

    const-string v2, "App.deviceLang"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    const-string v2, "App.channel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "medium"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/tdo/showbox/utils/TimeUtils;->getCurrentTime()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const v2, 0xa8c0

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 115
    iget-object v2, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expired_date"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tdo/showbox/http/HttpUtils;->encodeBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpUtils.encodeBody(JSO…bject.toJSONString(data))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic executeUpload$default(Lcom/tdo/showbox/http/HttpUploadRequest;Lcom/tdo/showbox/http/ResponseCallback;ILjava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 55
    check-cast p1, Lcom/tdo/showbox/http/ResponseCallback;

    :cond_7
    invoke-virtual {p0, p1}, Lcom/tdo/showbox/http/HttpUploadRequest;->executeUpload(Lcom/tdo/showbox/http/ResponseCallback;)Lcom/tdo/showbox/http/HttpUploadRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addBaseParams(Ljava/lang/String;Ljava/io/File;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/tdo/showbox/http/HttpUploadRequest;->addBaseParams$default(Lcom/tdo/showbox/http/HttpUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addBaseParams(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 11

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/tdo/showbox/http/HttpUploadRequest;->addBaseParams$default(Lcom/tdo/showbox/http/HttpUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addBaseParams(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 7

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formName"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mediaType:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->uploadFile:Ljava/io/File;

    .line 45
    iput-object p4, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->formName:Ljava/lang/String;

    return-object p0
.end method

.method public final addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addParams(Ljava/util/HashMap;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tdo/showbox/http/HttpUploadRequest;"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->data:Ljava/util/HashMap;

    return-object p0
.end method

.method public final bindLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 3

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final executeUpload()Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/tdo/showbox/http/HttpUploadRequest;->executeUpload$default(Lcom/tdo/showbox/http/HttpUploadRequest;Lcom/tdo/showbox/http/ResponseCallback;ILjava/lang/Object;)Lcom/tdo/showbox/http/HttpUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final executeUpload(Lcom/tdo/showbox/http/ResponseCallback;)Lcom/tdo/showbox/http/HttpUploadRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tdo/showbox/http/ResponseCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tdo/showbox/http/HttpUploadRequest;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    .line 59
    check-cast v0, Lokhttp3/MultipartBody$Part;

    .line 60
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mediaType:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    iget-object v2, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->uploadFile:Ljava/io/File;

    if-nez v2, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 62
    :try_start_18
    iget-object v2, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->formName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->uploadFile:Ljava/io/File;

    if-nez v3, :cond_21

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_34
    if-eqz v0, :cond_6e

    .line 68
    invoke-static {}, Lcom/tdo/showbox/http/Http;->getService()Lcom/tdo/showbox/http/APIService;

    move-result-object v1

    sget-object v2, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpUploadRequest;->buildData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tdo.showbox"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/tdo/showbox/http/APIService;->Upload_Request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslateMsg()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxSchedulerHelper()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Lcom/tdo/showbox/utils/RxUtils;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 72
    new-instance v1, Lcom/tdo/showbox/http/HttpUploadRequest$executeUpload$1;

    invoke-direct {v1, p1}, Lcom/tdo/showbox/http/HttpUploadRequest$executeUpload$1;-><init>(Lcom/tdo/showbox/http/ResponseCallback;)V

    check-cast v1, Lio/reactivex/Observer;

    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :cond_6e
    return-object p0

    .line 57
    :cond_6f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not bind LifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final executeUploadObservable()Lio/reactivex/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    move-object v1, v0

    check-cast v1, Lokhttp3/MultipartBody$Part;

    .line 93
    iget-object v2, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->mediaType:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    iget-object v3, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->uploadFile:Ljava/io/File;

    if-nez v3, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 95
    :try_start_15
    iget-object v3, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->formName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tdo/showbox/http/HttpUploadRequest;->uploadFile:Ljava/io/File;

    if-nez v4, :cond_1e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1e
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    .line 97
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_31
    if-eqz v1, :cond_4b

    .line 101
    invoke-static {}, Lcom/tdo/showbox/http/Http;->getService()Lcom/tdo/showbox/http/APIService;

    move-result-object v0

    sget-object v2, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpUploadRequest;->buildData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tdo.showbox"

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/tdo/showbox/http/APIService;->Upload_Request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslateMsg()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    :cond_4b
    return-object v0
.end method
