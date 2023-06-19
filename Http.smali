# classes.dex

.class public Lcom/tdo/showbox/http/Http;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdo/showbox/http/Http$HttpDns;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Http"

.field private static client:Lokhttp3/OkHttpClient;

.field private static mHandler:Landroid/os/Handler;

.field private static service:Lcom/tdo/showbox/http/APIService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/tdo/showbox/http/Http;->addCommonParams(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/tdo/showbox/http/Http;->processText(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 58
    sget-object v0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static addCommonParams(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_95

    .line 274
    instance-of v0, p0, Lokhttp3/FormBody;

    if-eqz v0, :cond_95

    .line 275
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 276
    invoke-static {}, Lcom/tdo/showbox/utils/TimeUtils;->getCurrentTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0xa8c0

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expired_date"

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v1, "platform"

    const-string v2, "android"

    .line 277
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v1, "app_version"

    const-string v2, "11.5"

    .line 278
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 279
    sget-object v1, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 280
    invoke-static {}, Lcom/tdo/showbox/utils/PrefsUtils;->getInstance()Lcom/tdo/showbox/utils/PrefsUtils;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "child_mode"

    invoke-virtual {v1, v3, v2}, Lcom/tdo/showbox/utils/PrefsUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "childmode"

    if-eqz v1, :cond_49

    const-string v1, "1"

    .line 281
    invoke-virtual {v0, v3, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_4e

    :cond_49
    const-string v1, "0"

    .line 283
    invoke-virtual {v0, v3, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 285
    :goto_4e
    sget-object v1, Lcom/tdo/showbox/app/App;->deviceLang:Ljava/lang/String;

    const-string v3, "lang"

    invoke-virtual {v0, v3, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 286
    sget-object v1, Lcom/tdo/showbox/app/App;->packageName:Ljava/lang/String;

    const-string v3, "appid"

    invoke-virtual {v0, v3, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 287
    check-cast p0, Lokhttp3/FormBody;

    .line 288
    invoke-virtual {p0}, Lokhttp3/FormBody;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_63
    if-ge v3, v1, :cond_73

    .line 290
    invoke-virtual {p0, v3}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lokhttp3/FormBody;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 292
    :cond_73
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 293
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lokhttp3/FormBody;->size()I

    move-result v1

    :goto_80
    if-ge v2, v1, :cond_90

    .line 296
    invoke-virtual {v0, v2}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lokhttp3/FormBody;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 298
    :cond_90
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_95
    const-string p0, ""

    return-object p0
.end method

.method public static baseUrlChanged()V
    .registers 1

    .line 88
    sget-object v0, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->createService(Ljava/lang/String;)V

    return-void
.end method

.method private static createService(Ljava/lang/String;)V
    .registers 3

    .line 93
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/tdo/showbox/http/Http;->client:Lokhttp3/OkHttpClient;

    .line 94
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 96
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    new-instance v0, Lcom/tdo/showbox/http/converter/ToStringConverterFactory;

    invoke-direct {v0}, Lcom/tdo/showbox/http/converter/ToStringConverterFactory;-><init>()V

    .line 97
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 98
    invoke-static {}, Lcom/tdo/showbox/http/converter/FastJsonConverterFactory;->create()Lcom/tdo/showbox/http/converter/FastJsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    .line 100
    const-class v0, Lcom/tdo/showbox/http/APIService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tdo/showbox/http/APIService;

    sput-object p0, Lcom/tdo/showbox/http/Http;->service:Lcom/tdo/showbox/http/APIService;

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tdo/showbox/http/RequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 370
    invoke-static {}, Lcom/tdo/showbox/http/Http;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 371
    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 373
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    if-eqz p1, :cond_3a

    .line 374
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 375
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 376
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-virtual {p0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1e

    .line 381
    :cond_3a
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    .line 382
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 383
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    sget-object p1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 384
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 386
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 387
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 388
    new-instance p1, Lcom/tdo/showbox/http/Http$3;

    invoke-direct {p1, p2}, Lcom/tdo/showbox/http/Http$3;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_6e

    :cond_62
    if-eqz p2, :cond_6e

    .line 443
    sget-object p0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tdo/showbox/http/Http$4;

    invoke-direct {p1, p2}, Lcom/tdo/showbox/http/Http$4;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 81
    sget-object v0, Lcom/tdo/showbox/http/Http;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_7

    .line 82
    invoke-static {}, Lcom/tdo/showbox/http/Http;->initClient()V

    .line 84
    :cond_7
    sget-object v0, Lcom/tdo/showbox/http/Http;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getService()Lcom/tdo/showbox/http/APIService;
    .registers 1

    .line 69
    sget-object v0, Lcom/tdo/showbox/http/Http;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lcom/tdo/showbox/http/Http;->initClient()V

    .line 73
    :cond_7
    sget-object v0, Lcom/tdo/showbox/http/Http;->service:Lcom/tdo/showbox/http/APIService;

    if-nez v0, :cond_10

    .line 74
    sget-object v0, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->createService(Ljava/lang/String;)V

    .line 77
    :cond_10
    sget-object v0, Lcom/tdo/showbox/http/Http;->service:Lcom/tdo/showbox/http/APIService;

    return-object v0
.end method

.method private static initClient()V
    .registers 3

    .line 104
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 105
    sget-boolean v1, Lcom/tdo/showbox/app/App;->isDebug:Z

    if-eqz v1, :cond_c

    .line 106
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 108
    :cond_c
    new-instance v1, Lcom/tdo/showbox/utils/SSLUtil;

    invoke-direct {v1}, Lcom/tdo/showbox/utils/SSLUtil;-><init>()V

    .line 109
    invoke-virtual {v1}, Lcom/tdo/showbox/utils/SSLUtil;->addCertificate()V

    .line 110
    invoke-virtual {v1}, Lcom/tdo/showbox/utils/SSLUtil;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tdo/showbox/utils/SSLUtil;->getMX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 111
    new-instance v1, Lcom/tdo/showbox/http/Http$HttpDns;

    invoke-direct {v1}, Lcom/tdo/showbox/http/Http$HttpDns;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 112
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setCookieJar(Lokhttp3/OkHttpClient$Builder;)V

    .line 113
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setHeaderInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 114
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setParamsInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 115
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setCacheDirectory(Lokhttp3/OkHttpClient$Builder;)V

    .line 116
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setTimeout(Lokhttp3/OkHttpClient$Builder;)V

    .line 117
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/tdo/showbox/http/Http;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tdo/showbox/http/RequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 461
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 462
    sget-boolean v1, Lcom/tdo/showbox/app/App;->isDebug:Z

    if-eqz v1, :cond_c

    .line 464
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 466
    :cond_c
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 468
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p1, :cond_41

    .line 469
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 470
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 473
    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_25

    .line 476
    :cond_41
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 478
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v2, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 479
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 480
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 481
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 483
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 485
    new-instance p1, Lcom/tdo/showbox/http/Http$5;

    invoke-direct {p1, p2}, Lcom/tdo/showbox/http/Http$5;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private static processBody(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 308
    invoke-virtual {p0, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 309
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    .line 310
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {}, Lcom/tdo/showbox/utils/TimeUtils;->getCurrentTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&expired_date="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&platform=android"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&app_version="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tdo/showbox/app/App;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&channel="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-static {}, Lcom/tdo/showbox/utils/PrefsUtils;->getInstance()Lcom/tdo/showbox/utils/PrefsUtils;

    move-result-object v0

    const-string v1, "child_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tdo/showbox/utils/PrefsUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&childmode=1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    .line 321
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&childmode=0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    :goto_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intercept body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http"

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lcom/tdo/showbox/http/HttpUtils;->formToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static processText(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 246
    invoke-virtual {p0, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 247
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    .line 248
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 250
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_22

    .line 252
    :cond_1e
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 254
    :goto_22
    invoke-static {}, Lcom/tdo/showbox/utils/TimeUtils;->getCurrentTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expired_date"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/tdo/showbox/app/App;->packageName:Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/tdo/showbox/app/App;->versionName:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    const-string v1, "medium "

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/tdo/showbox/app/App;->deviceToken:Ljava/lang/String;

    const-string v1, "token "

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v1, "android"

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    const-string v1, "channel"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/tdo/showbox/utils/PrefsUtils;->getInstance()Lcom/tdo/showbox/utils/PrefsUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "child_mode"

    invoke-virtual {v0, v2, v1}, Lcom/tdo/showbox/utils/PrefsUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "childmode"

    if-eqz v0, :cond_75

    const-string v0, "1"

    .line 264
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    :cond_75
    const-string v0, "0"

    .line 266
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_7a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setCacheDirectory(Lokhttp3/OkHttpClient$Builder;)V
    .registers 5

    .line 158
    invoke-static {}, Lcom/tdo/showbox/app/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/io/File;

    const-string v2, "responses"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lokhttp3/Cache;

    const-wide/32 v2, 0xa00000

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 162
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private static setCookieJar(Lokhttp3/OkHttpClient$Builder;)V
    .registers 5

    .line 171
    invoke-static {}, Lcom/tdo/showbox/app/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;

    new-instance v2, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;

    invoke-direct {v2}, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;-><init>()V

    new-instance v3, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;

    invoke-direct {v3, v0}, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;-><init>(Lcom/franmontiel/persistentcookiejar/cache/CookieCache;Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;)V

    .line 175
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private static setHeaderInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .registers 2

    if-eqz p0, :cond_a

    .line 339
    new-instance v0, Lcom/tdo/showbox/http/Http$2;

    invoke-direct {v0}, Lcom/tdo/showbox/http/Http$2;-><init>()V

    .line 351
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_a
    return-void
.end method

.method private static setLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .registers 3

    if-eqz p0, :cond_f

    .line 128
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 129
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 130
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_f
    return-void
.end method

.method private static setParamsInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .registers 2

    if-eqz p0, :cond_a

    .line 185
    new-instance v0, Lcom/tdo/showbox/http/Http$1;

    invoke-direct {v0}, Lcom/tdo/showbox/http/Http$1;-><init>()V

    .line 237
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_a
    return-void
.end method

.method private static setTimeout(Lokhttp3/OkHttpClient$Builder;)V
    .registers 4

    .line 141
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 142
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 147
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 148
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public static uploadAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tdo/showbox/http/RequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 553
    sget-boolean v1, Lcom/tdo/showbox/app/App;->isDebug:Z

    if-eqz v1, :cond_c

    .line 555
    invoke-static {v0}, Lcom/tdo/showbox/http/Http;->setLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 557
    :cond_c
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 559
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    if-eqz p1, :cond_41

    .line 561
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 562
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 563
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 564
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 565
    invoke-virtual {v1, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_25

    :cond_41
    if-eqz p2, :cond_d3

    .line 569
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d3

    const/4 p1, 0x0

    const-string v2, "filePath"

    .line 571
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 572
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_58
    if-eqz p1, :cond_c4

    const-string v2, "mimeType"

    .line 577
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 578
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_6b

    :cond_69
    const-string p2, "image/*"

    .line 581
    :goto_6b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 583
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, v2}, Lokhttp3/MultipartBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    const-string v2, "Filedata"

    .line 585
    invoke-virtual {v1, v2, p1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 623
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 625
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 626
    invoke-virtual {p2, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 627
    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 628
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 629
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 630
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 632
    new-instance p1, Lcom/tdo/showbox/http/Http$9;

    invoke-direct {p1, p3}, Lcom/tdo/showbox/http/Http$9;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :cond_b5
    if-eqz p3, :cond_c3

    .line 588
    sget-object p0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_c3

    .line 589
    new-instance p1, Lcom/tdo/showbox/http/Http$6;

    invoke-direct {p1, p3}, Lcom/tdo/showbox/http/Http$6;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c3
    return-void

    :cond_c4
    if-eqz p3, :cond_d2

    .line 600
    sget-object p0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d2

    .line 601
    new-instance p1, Lcom/tdo/showbox/http/Http$7;

    invoke-direct {p1, p3}, Lcom/tdo/showbox/http/Http$7;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d2
    return-void

    :cond_d3
    if-eqz p3, :cond_e1

    .line 612
    sget-object p0, Lcom/tdo/showbox/http/Http;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_e1

    .line 613
    new-instance p1, Lcom/tdo/showbox/http/Http$8;

    invoke-direct {p1, p3}, Lcom/tdo/showbox/http/Http$8;-><init>(Lcom/tdo/showbox/http/RequestCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e1
    return-void
.end method

.method public static uploadSync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Call;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 692
    sget-boolean v0, Lcom/tdo/showbox/app/App;->isDebug:Z

    .line 696
    invoke-static {}, Lcom/tdo/showbox/http/Http;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 698
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const-string v2, "multipart/form-data"

    .line 699
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    if-eqz p1, :cond_40

    .line 701
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 702
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 704
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 705
    invoke-virtual {v1, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_24

    :cond_40
    const/4 p1, 0x0

    if-eqz p2, :cond_ae

    .line 709
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "filePath"

    .line 711
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 712
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_59

    :cond_58
    move-object v2, p1

    :goto_59
    if-eqz v2, :cond_ae

    const-string v3, "mimeType"

    .line 717
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 718
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_6c

    :cond_6a
    const-string p2, "image/*"

    .line 721
    :goto_6c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 723
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, v3}, Lokhttp3/MultipartBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    const-string v2, "Filedata"

    .line 725
    invoke-virtual {v1, v2, p1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 736
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 738
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 739
    invoke-virtual {p2, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 740
    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 741
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 742
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 743
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0

    :cond_ae
    return-object p1
.end method
