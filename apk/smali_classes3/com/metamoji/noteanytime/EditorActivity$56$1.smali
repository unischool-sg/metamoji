.class Lcom/metamoji/noteanytime/EditorActivity$56$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$56;

.field final synthetic val$pageData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$56;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5154
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$56$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$56;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$56$1;->val$pageData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5157
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$56$1;->val$pageData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;-><init>(Ljava/util/List;)V

    .line 5158
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$56$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$56;

    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity$56;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 5159
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$56$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$56;

    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity$56;->val$fm:Landroidx/fragment/app/FragmentManager;

    const-string v2, "NtEditorWindowController#handlePutInParts"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
