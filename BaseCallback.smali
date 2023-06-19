# classes3.dex

.class public abstract Lcom/tdo/showbox/http/BaseCallback;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private callWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;"
        }
    .end annotation
.end field

.field private viewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tdo/showbox/view/listener/IViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Lcom/tdo/showbox/http/BaseCallback;-><init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/tdo/showbox/http/BaseCallback;-><init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lcom/tdo/showbox/view/listener/IViewController;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdo/showbox/http/BaseCallback;->callWeakRef:Ljava/lang/ref/WeakReference;

    :cond_c
    if-eqz p2, :cond_15

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdo/showbox/http/BaseCallback;->viewWeakRef:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_15
    invoke-direct {p0}, Lcom/tdo/showbox/http/BaseCallback;->onStart()V

    return-void
.end method

.method private onStart()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/tdo/showbox/http/BaseCallback;->callWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Call;

    if-eqz v0, :cond_f

    .line 44
    invoke-static {v0}, Lcom/tdo/showbox/http/CallManager;->add(Lretrofit2/Call;)V

    .line 49
    :cond_f
    iget-object v0, p0, Lcom/tdo/showbox/http/BaseCallback;->viewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdo/showbox/view/listener/IViewController;

    :cond_19
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/tdo/showbox/http/BaseCallback;->onFinish(ZLjava/lang/String;)V

    return-void
.end method

.method public onFinish(ZLjava/lang/String;)V
    .registers 3

    .line 79
    iget-object p1, p0, Lcom/tdo/showbox/http/BaseCallback;->callWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_f

    .line 80
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    if-eqz p1, :cond_f

    .line 82
    invoke-static {p1}, Lcom/tdo/showbox/http/CallManager;->remove(Lretrofit2/Call;)V

    .line 87
    :cond_f
    iget-object p1, p0, Lcom/tdo/showbox/http/BaseCallback;->viewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_19

    .line 88
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tdo/showbox/view/listener/IViewController;

    :cond_19
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 61
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tdo/showbox/http/BaseCallback;->onResponse(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 p1, 0x1

    const-string p2, "请求成功"

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/tdo/showbox/http/BaseCallback;->onFinish(ZLjava/lang/String;)V

    goto :goto_2c

    .line 64
    :cond_17
    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "数据错误"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tdo/showbox/http/BaseCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 67
    :cond_22
    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "请求失败"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tdo/showbox/http/BaseCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method public abstract onResponse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
