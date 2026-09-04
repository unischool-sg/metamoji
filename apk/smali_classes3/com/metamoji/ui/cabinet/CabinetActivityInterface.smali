.class public interface abstract Lcom/metamoji/ui/cabinet/CabinetActivityInterface;
.super Ljava/lang/Object;
.source "CabinetActivityInterface.java"


# virtual methods
.method public abstract ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract hideNoteListSyncInfo(Ljava/lang/String;)V
.end method

.method public abstract hideNoteListSyncInfo(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hideSyncStatusView()V
.end method

.method public abstract reloadAllView()V
.end method

.method public abstract setDeletedNoteCount(I)V
.end method

.method public abstract setObjectForPermissionRequest(Landroid/os/Parcelable;)V
.end method

.method public abstract showNoteListSyncInfo(Ljava/lang/String;Z)V
.end method

.method public abstract showNoteListSyncInfo(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract showSyncStatusView(Ljava/lang/String;)V
.end method
