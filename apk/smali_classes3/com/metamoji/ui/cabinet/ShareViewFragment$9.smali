.class Lcom/metamoji/ui/cabinet/ShareViewFragment$9;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->prepareModeChangeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 985
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 986
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    sget-object p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;)V

    .line 987
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ordinal()I

    move-result p2

    const-string v2, "MMJNtCabinetShareViewType"

    invoke-virtual {p1, v2, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 989
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$mupdateShareList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    .line 990
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 991
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    .line 992
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setVisibility(I)V

    return v1

    .line 994
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 995
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_1
    return v0
.end method
