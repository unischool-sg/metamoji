.class Lcom/metamoji/noteanytime/EditorActivity$80;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->hideEditLayerInfo()V
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

    .line 8768
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$80;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 8771
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$80;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->hide()V

    .line 8772
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$80;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->requestLayout()V

    return-void
.end method
