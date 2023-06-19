# classes3.dex

.class Lcom/tdo/showbox/http/Http$5$4;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdo/showbox/http/Http$5;

.field final synthetic val$code:I

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/Http$5;ILjava/lang/String;)V
    .registers 4

    .line 529
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$5$4;->this$0:Lcom/tdo/showbox/http/Http$5;

    iput p2, p0, Lcom/tdo/showbox/http/Http$5$4;->val$code:I

    iput-object p3, p0, Lcom/tdo/showbox/http/Http$5$4;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$5$4;->this$0:Lcom/tdo/showbox/http/Http$5;

    iget-object v0, v0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    iget v1, p0, Lcom/tdo/showbox/http/Http$5$4;->val$code:I

    iget-object v2, p0, Lcom/tdo/showbox/http/Http$5$4;->val$error:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tdo/showbox/http/RequestCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
