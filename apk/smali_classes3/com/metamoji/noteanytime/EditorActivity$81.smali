.class Lcom/metamoji/noteanytime/EditorActivity$81;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showEditLayerInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$color:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;I)V
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

    .line 8778
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8781
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->editLayerInfoResetMargin()V

    .line 8782
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->val$color:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->show(Ljava/lang/String;I)V

    .line 8783
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$81;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->requestLayout()V

    return-void
.end method
