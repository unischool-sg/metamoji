.class Lcom/metamoji/ui/cabinet/ShareViewActivity$4;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 189
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    if-eqz p1, :cond_1

    .line 192
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->isShareViewWaiting()Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_updateBtn(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_updateBtn(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
