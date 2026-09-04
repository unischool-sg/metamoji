.class abstract Lcom/metamoji/nt/itemlist/NtItemListAdapter;
.super Ljava/lang/Object;
.source "NtItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected m_baseIndex:I

.field private m_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private m_listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetm_items(Lcom/metamoji/nt/itemlist/NtItemListAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_baseIndex:I

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract _setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "TT;>;",
            "Lcom/metamoji/cm/Blob;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract _updateThumbnail(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public add(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->itemAdded(I)Z

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;Z)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->itemAddedAll(I)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->removeItemListener()V

    .line 69
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected dpToPx(I)I
    .locals 2

    .line 189
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorPage()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 190
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemView(ILandroid/view/ViewGroup;)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;
    .locals 1

    .line 108
    new-instance v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected abstract getThumbnail(Ljava/lang/Object;)Lcom/metamoji/cm/Blob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/metamoji/cm/Blob;"
        }
    .end annotation
.end method

.method public holderInitialize(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected initBaseIndex(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_baseIndex:I

    return-void
.end method

.method public insert(Ljava/lang/Object;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->itemInserted(I)Z

    :cond_0
    return-void
.end method

.method public move(IIZ)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->remove(Ljava/lang/Object;Z)V

    .line 233
    invoke-virtual {p0, v0, p2, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->insert(Ljava/lang/Object;IZ)V

    .line 234
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz p3, :cond_0

    .line 236
    invoke-interface {p3, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->itemMoved(II)Z

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 221
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz p2, :cond_0

    .line 224
    invoke-interface {p2, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->itemRemoved(I)Z

    :cond_0
    return-void
.end method

.method public removeItemListener()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setItemListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getThumbnail(Ljava/lang/Object;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "TT;>;",
            "Lcom/metamoji/cm/Blob;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 172
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;-><init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->_setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;

    invoke-direct {v1, p0, v0, p1, p0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;-><init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Lcom/metamoji/nt/itemlist/NtItemListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHolder()Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V

    return-void
.end method

.method toItemLoaded(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->m_items:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->load(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHolder()Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->holderInitialize(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V

    const/4 p1, 0x1

    return p1
.end method

.method public abstract updateLabel(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
.end method
