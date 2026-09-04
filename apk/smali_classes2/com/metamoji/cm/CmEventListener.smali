.class public Lcom/metamoji/cm/CmEventListener;
.super Ljava/lang/Object;
.source "CmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected _firing:Z

.field protected _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected _reserved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    .line 30
    iput-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p1}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    monitor-enter p0

    if-nez p2, :cond_0

    .line 41
    :try_start_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fire(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 130
    iput-boolean v1, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/ICmEventHandler;

    .line 138
    invoke-interface {v3, p1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 141
    :cond_1
    monitor-enter p0

    .line 142
    :try_start_2
    iput-boolean v2, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    .line 143
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/ICmEventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    iget-object v4, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 151
    :try_start_3
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 154
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 157
    :cond_3
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    .line 160
    :cond_4
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 161
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    .line 163
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 141
    monitor-enter p0

    .line 142
    :try_start_4
    iput-boolean v2, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    .line 143
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_7

    .line 146
    iget-object v3, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/cm/ICmEventHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    iget-object v5, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 151
    :try_start_5
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 154
    :cond_6
    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    .line 163
    :cond_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 164
    throw p1

    :catchall_2
    move-exception p1

    .line 163
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 131
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    .line 72
    monitor-enter p0

    if-nez p1, :cond_0

    .line 74
    :try_start_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/cm/CmEventListener;->_firing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 82
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll()V
    .locals 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_map:Ljava/util/Map;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v1, p0, Lcom/metamoji/cm/CmEventListener;->_reserved:Ljava/util/ArrayList;

    .line 108
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
