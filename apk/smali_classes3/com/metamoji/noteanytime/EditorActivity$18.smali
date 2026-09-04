.class Lcom/metamoji/noteanytime/EditorActivity$18;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$errorType:I


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;I)V
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

    .line 1744
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$18;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput p2, p0, Lcom/metamoji/noteanytime/EditorActivity$18;->val$errorType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1747
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$18;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivity$18;->val$errorType:I

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mtransitionToErrorView(Lcom/metamoji/noteanytime/EditorActivity;I)V

    return-void
.end method
