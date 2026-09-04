.class Lcom/metamoji/noteanytime/EditorActivity$83;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showPersonalModeInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$isOnline:Z

.field final synthetic val$personalName:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 8824
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$personalName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$status:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$isOnline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 8827
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$personalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$status:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/EditorActivity$83;->val$isOnline:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->show(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
