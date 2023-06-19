# classes3.dex

.class public final Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;
.super Lcom/tdo/showbox/base/BaseObserver;
.source "HttpUploadBBsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/HttpUploadBBsRequest;->executeUpload(Lcom/tdo/showbox/http/ResponseCallback;)Lcom/tdo/showbox/http/HttpUploadBBsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tdo/showbox/base/BaseObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"
    }
    d2 = {
        "com/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1",
        "Lcom/tdo/showbox/base/BaseObserver;",
        "",
        "onError",
        "",
        "e",
        "Lcom/tdo/showbox/http/ApiException;",
        "onNext",
        "s",
        "onSubscribe",
        "d",
        "Lio/reactivex/disposables/Disposable;",
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
.field final synthetic $callback:Lcom/tdo/showbox/http/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/ResponseCallback;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;->$callback:Lcom/tdo/showbox/http/ResponseCallback;

    invoke-direct {p0}, Lcom/tdo/showbox/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tdo/showbox/http/ApiException;)V
    .registers 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;->$callback:Lcom/tdo/showbox/http/ResponseCallback;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/tdo/showbox/http/ApiException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/tdo/showbox/http/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tdo/showbox/http/ResponseCallback;->onFailure(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 72
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .registers 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lcom/tdo/showbox/base/BaseObserver;->onNext(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;->$callback:Lcom/tdo/showbox/http/ResponseCallback;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/tdo/showbox/http/ResponseCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/tdo/showbox/base/BaseObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 75
    iget-object p1, p0, Lcom/tdo/showbox/http/HttpUploadBBsRequest$executeUpload$1;->$callback:Lcom/tdo/showbox/http/ResponseCallback;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/tdo/showbox/http/ResponseCallback;->onStart()V

    :cond_f
    return-void
.end method
