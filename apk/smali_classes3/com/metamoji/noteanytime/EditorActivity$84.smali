.class Lcom/metamoji/noteanytime/EditorActivity$84;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->prevNextButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V
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

    .line 8833
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$84;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/EditorActivity$84;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8836
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$84;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity$84;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->prevNextButtonEnabled(Z)V

    return-void
.end method
