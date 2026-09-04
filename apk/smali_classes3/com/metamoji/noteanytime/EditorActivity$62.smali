.class Lcom/metamoji/noteanytime/EditorActivity$62;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->enableButtonOnUIThread(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$enabled:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5728
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput p2, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->val$id:I

    iput-boolean p3, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5731
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->val$id:I

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity$62;->val$enabled:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->enableButton(IZZ)V

    return-void
.end method
