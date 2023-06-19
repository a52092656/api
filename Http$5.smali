# classes3.dex

.class final Lcom/tdo/showbox/http/Http$5;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http;->post(Ljava/lang/String;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tdo/showbox/http/RequestCallback;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 2

    .line 485
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 488
    iget-object p1, p0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p1, :cond_14

    .line 490
    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/tdo/showbox/http/Http$5$1;

    invoke-direct {v0, p0, p1}, Lcom/tdo/showbox/http/Http$5$1;-><init>(Lcom/tdo/showbox/http/Http$5;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 503
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 505
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 506
    iget-object p2, p0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p2, :cond_50

    .line 507
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/tdo/showbox/http/Http$5$2;

    invoke-direct {v0, p0, p1}, Lcom/tdo/showbox/http/Http$5$2;-><init>(Lcom/tdo/showbox/http/Http$5;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    .line 515
    :cond_21
    iget-object p1, p0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p1, :cond_50

    .line 516
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/tdo/showbox/http/Http$5$3;

    invoke-direct {p2, p0}, Lcom/tdo/showbox/http/Http$5$3;-><init>(Lcom/tdo/showbox/http/Http$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    .line 525
    :cond_32
    iget-object p1, p0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p1, :cond_50

    .line 526
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    .line 527
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 529
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tdo/showbox/http/Http$5$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tdo/showbox/http/Http$5$4;-><init>(Lcom/tdo/showbox/http/Http$5;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_50
    :goto_50
    return-void
.end method
