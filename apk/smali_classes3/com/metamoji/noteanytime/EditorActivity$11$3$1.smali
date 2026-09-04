.class Lcom/metamoji/noteanytime/EditorActivity$11$3$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$11$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/noteanytime/EditorActivity$11$3;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$11$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1290
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;->this$2:Lcom/metamoji/noteanytime/EditorActivity$11$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1293
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;->this$2:Lcom/metamoji/noteanytime/EditorActivity$11$3;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$11;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1294
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v5

    .line 1296
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 1297
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    .line 1300
    new-instance v1, Lcom/metamoji/nt/NtJumpLocation;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;->this$2:Lcom/metamoji/noteanytime/EditorActivity$11$3;

    iget-object v2, v2, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v2, v2, Lcom/metamoji/noteanytime/EditorActivity$11;->val$mergedDocId:Ljava/lang/String;

    sget-object v4, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    .line 1301
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;->this$2:Lcom/metamoji/noteanytime/EditorActivity$11$3;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$11;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$smgetCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    return-void
.end method
