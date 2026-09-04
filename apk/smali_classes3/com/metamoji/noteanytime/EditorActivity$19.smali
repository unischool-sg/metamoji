.class Lcom/metamoji/noteanytime/EditorActivity$19;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1843
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$19;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1846
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getCurrentSelection()Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1849
    invoke-static {p1, v0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->openDocumentFromTab(Lcom/metamoji/nt/NtMRUDocList$Item;ZZ)V

    return-void
.end method
