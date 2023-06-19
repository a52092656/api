# classes3.dex

.class public final Lcom/tdo/showbox/http/HttpRequest$Companion;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdo/showbox/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"
    }
    d2 = {
        "Lcom/tdo/showbox/http/HttpRequest$Companion;",
        "",
        "()V",
        "post",
        "Lcom/tdo/showbox/http/HttpRequest;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "module",
        "",
        "app_webRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/tdo/showbox/http/HttpRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final post(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/tdo/showbox/http/HttpRequest;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/tdo/showbox/http/HttpRequest;

    invoke-direct {v0, p2, p1}, Lcom/tdo/showbox/http/HttpRequest;-><init>(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method
