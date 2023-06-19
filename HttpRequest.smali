# classes3.dex

.class public final Lcom/tdo/showbox/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdo/showbox/http/HttpRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequest.kt\ncom/tdo/showbox/http/HttpRequest\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,118:1\n10930#2,2:119\n149#3,2:121\n*E\n*S KotlinDebug\n*F\n+ 1 HttpRequest.kt\ncom/tdo/showbox/http/HttpRequest\n*L\n44#1,2:119\n51#1,2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014J0\u0010\u0015\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00120\u0016j\b\u0012\u0004\u0012\u0002H\u0012`\u00170\u0011\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011J\u0006\u0010\u0019\u001a\u00020\u000fJ\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bH\u0002J;\u0010\u001c\u001a\u00020\u00002.\u0010\u001d\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f0\u001e\"\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f¢\u0006\u0002\u0010 J\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\b\u0010\"\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\b\u0010\"\u001a\u0004\u0018\u00010\u0003J.\u0010#\u001a\u00020\u00002&\u0010$\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR.\u0010\u000b\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"
    }
    d2 = {
        "Lcom/tdo/showbox/http/HttpRequest;",
        "",
        "module",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getModule",
        "()Ljava/lang/String;",
        "paramMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "addCommonParams",
        "",
        "asBean",
        "Lcom/uber/autodispose/ObservableSubscribeProxy;",
        "T",
        "type",
        "Ljava/lang/Class;",
        "asList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "asMsg",
        "asMsgSubcribe",
        "getRequest",
        "Lio/reactivex/Observable;",
        "param",
        "pair",
        "",
        "Lkotlin/Pair;",
        "([Lkotlin/Pair;)Lcom/tdo/showbox/http/HttpRequest;",
        "key",
        "value",
        "params",
        "map",
        "Companion",
        "app_webRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tdo/showbox/http/HttpRequest$Companion;


# instance fields
.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final module:Ljava/lang/String;

.field private paramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tdo/showbox/http/HttpRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tdo/showbox/http/HttpRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tdo/showbox/http/HttpRequest;->Companion:Lcom/tdo/showbox/http/HttpRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tdo/showbox/http/HttpRequest;->module:Ljava/lang/String;

    iput-object p2, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    .line 23
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->addCommonParams()V

    return-void
.end method

.method private final addCommonParams()V
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Lcom/tdo/showbox/utils/TimeUtils;->getCurrentTime()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    const v3, 0xa8c0

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expired_date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "app_version"

    const-string v2, "11.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->channel:Ljava/lang/String;

    const-string v2, "channel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/tdo/showbox/utils/PrefsUtils;->getInstance()Lcom/tdo/showbox/utils/PrefsUtils;

    move-result-object v0

    const-string v1, "child_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tdo/showbox/utils/PrefsUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "childmode"

    if-eqz v0, :cond_54

    .line 105
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 107
    :cond_54
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_5d
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->deviceLang:Ljava/lang/String;

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/tdo/showbox/app/App;->packageName:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->module:Ljava/lang/String;

    const-string v2, "module"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/tdo/showbox/app/App;->getUserData()Lcom/tdo/showbox/model/user/UserModel$UserData;

    move-result-object v0

    const-string v1, "App.getUserData()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_94

    .line 114
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    iget-object v0, v0, Lcom/tdo/showbox/model/user/UserModel$UserData;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    return-void
.end method

.method private final getRequest()Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->addCommonParams()V

    const-string v0, "text/plain; charset=utf-8"

    .line 95
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/tdo/showbox/http/Http;->getService()Lcom/tdo/showbox/http/APIService;

    move-result-object v1

    sget-object v2, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/tdo/showbox/http/APIService;->request(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Http.getService().reques…PI.BASE_URL, requestBody)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final post(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tdo/showbox/http/HttpRequest;->Companion:Lcom/tdo/showbox/http/HttpRequest$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/tdo/showbox/http/HttpRequest$Companion;->post(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asBean(Ljava/lang/Class;)Lcom/uber/autodispose/ObservableSubscribeProxy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->getRequest()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslate2Bean(Ljava/lang/Class;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxSchedulerHelper()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Lcom/tdo/showbox/utils/RxUtils;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getRequest().compose(RxU…cleOwner(lifecycleOwner))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    return-object p1
.end method

.method public final asList(Ljava/lang/Class;)Lcom/uber/autodispose/ObservableSubscribeProxy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->getRequest()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslate2List(Ljava/lang/Class;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxSchedulerHelper()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Lcom/tdo/showbox/utils/RxUtils;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getRequest().compose(RxU…cleOwner(lifecycleOwner))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    return-object p1
.end method

.method public final asMsg()Lcom/uber/autodispose/ObservableSubscribeProxy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->getRequest()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslateMsg()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxSchedulerHelper()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Lcom/tdo/showbox/utils/RxUtils;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getRequest().compose(RxU…cleOwner(lifecycleOwner))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    return-object v0
.end method

.method public final asMsgSubcribe()V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest;->getRequest()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxTranslateMsg()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/tdo/showbox/utils/RxUtils;->rxSchedulerHelper()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Lcom/tdo/showbox/utils/RxUtils;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 79
    new-instance v1, Lcom/tdo/showbox/http/HttpRequest$asMsgSubcribe$1;

    invoke-direct {v1}, Lcom/tdo/showbox/http/HttpRequest$asMsgSubcribe$1;-><init>()V

    check-cast v1, Lio/reactivex/Observer;

    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getModule()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->module:Ljava/lang/String;

    return-object v0
.end method

.method public final param(Ljava/lang/String;Ljava/lang/Object;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final param(Ljava/lang/String;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final varargs param([Lkotlin/Pair;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tdo/showbox/http/HttpRequest;"
        }
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    .line 45
    iget-object v3, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-object p0
.end method

.method public final params(Ljava/util/HashMap;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tdo/showbox/http/HttpRequest;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    check-cast p1, Ljava/util/Map;

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    iget-object v1, p0, Lcom/tdo/showbox/http/HttpRequest;->paramMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2b
    return-object p0
.end method
