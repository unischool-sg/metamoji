.class Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericEditDocumentCompleted"
.end annotation


# instance fields
.field mCloseEditorOnError:Z

.field mOnLoadCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

.field mOnce:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mOnLoadCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

    const/4 p1, 0x0

    .line 616
    iput-boolean p1, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mOnce:Z

    .line 617
    iput-boolean p2, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mCloseEditorOnError:Z

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 652
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->onDocumentCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mOnce:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 630
    iput-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mOnce:Z

    .line 631
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mOnLoadCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;->onDocumentCompleted(ZLjava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_3

    .line 635
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 636
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->mCloseEditorOnError:Z

    if-eqz v0, :cond_2

    .line 638
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDocument()V

    return-void

    .line 641
    :cond_2
    invoke-interface {p1, p2}, Lcom/metamoji/nt/INtEditor;->errorInLoadingNote(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
