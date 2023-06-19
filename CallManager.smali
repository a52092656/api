# classes.dex

.class public Lcom/tdo/showbox/http/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallManager"

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;>;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tdo/showbox/http/CallManager;->list:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tdo/showbox/http/CallManager;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2e

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {v0, p1}, Lcom/tdo/showbox/http/CallManager;->add(Ljava/util/List;Lretrofit2/Call;)V

    .line 40
    sget-object p1, Lcom/tdo/showbox/http/CallManager;->map:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 42
    :cond_2e
    invoke-static {v0, p1}, Lcom/tdo/showbox/http/CallManager;->add(Ljava/util/List;Lretrofit2/Call;)V

    :goto_31
    return-void
.end method

.method private static add(Ljava/util/List;Lretrofit2/Call;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;>;",
            "Lretrofit2/Call;",
            ")V"
        }
    .end annotation

    const-string v0, "CallManager"

    .line 47
    monitor-enter v0

    if-eqz p1, :cond_2d

    const/4 v1, 0x0

    .line 50
    :try_start_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_a

    .line 52
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Call;

    if-eqz v3, :cond_a

    if-ne v3, p1, :cond_a

    const/4 v1, 0x1

    :cond_23
    if-nez v1, :cond_2d

    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    goto :goto_33

    :goto_32
    throw p0

    :goto_33
    goto :goto_32
.end method

.method public static add(Lretrofit2/Call;)V
    .registers 2

    .line 31
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->list:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/tdo/showbox/http/CallManager;->add(Ljava/util/List;Lretrofit2/Call;)V

    return-void
.end method

.method public static cancelAll()V
    .registers 1

    .line 99
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/tdo/showbox/http/CallManager;->cancelAll(Ljava/util/List;)V

    return-void
.end method

.method public static cancelAll(Ljava/lang/String;)V
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_23

    .line 107
    invoke-static {p0}, Lcom/tdo/showbox/http/CallManager;->cancelAll(Ljava/util/List;)V

    :cond_23
    return-void
.end method

.method private static cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "CallManager"

    .line 112
    monitor-enter v0

    .line 113
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 115
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 118
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    if-eqz v1, :cond_2c

    .line 119
    invoke-interface {v1}, Lretrofit2/Call;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 120
    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    .line 122
    :cond_2c
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 126
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    goto :goto_36

    :goto_35
    throw p0

    :goto_36
    goto :goto_35
.end method

.method public static remove(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_29

    .line 74
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 75
    invoke-static {p0, p1}, Lcom/tdo/showbox/http/CallManager;->remove(Ljava/util/List;Lretrofit2/Call;)V

    :cond_29
    return-void
.end method

.method private static remove(Ljava/util/List;Lretrofit2/Call;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lretrofit2/Call;",
            ">;>;",
            "Lretrofit2/Call;",
            ")V"
        }
    .end annotation

    const-string v0, "CallManager"

    .line 80
    monitor-enter v0

    if-eqz p1, :cond_2d

    .line 82
    :try_start_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 83
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_9

    .line 86
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    if-eqz v1, :cond_9

    if-ne v1, p1, :cond_9

    .line 87
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 88
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 95
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    goto :goto_33

    :goto_32
    throw p0

    :goto_33
    goto :goto_32
.end method

.method public static remove(Lretrofit2/Call;)V
    .registers 2

    .line 68
    sget-object v0, Lcom/tdo/showbox/http/CallManager;->list:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/tdo/showbox/http/CallManager;->remove(Ljava/util/List;Lretrofit2/Call;)V

    return-void
.end method
