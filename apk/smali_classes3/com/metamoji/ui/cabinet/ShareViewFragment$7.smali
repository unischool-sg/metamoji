.class Lcom/metamoji/ui/cabinet/ShareViewFragment$7;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->onResume()V
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

    .line 621
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/nt/NtUserDefaults;)V

    .line 627
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ordinal()I

    move-result v2

    const-string v3, "MMJNtCabinetShareViewMode"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 629
    aget-object v0, v0, v1

    .line 630
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;)V

    .line 631
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_categoryGrp(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 634
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ordinal()I

    move-result v2

    const-string v3, "MMJNtCabinetShareViewType"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 636
    aget-object v0, v0, v1

    .line 637
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;)V

    .line 638
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    .line 642
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    .line 639
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 640
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 643
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$mupdateSearchBtnStatus(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    .line 650
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-virtual {v0, v4}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Z)V

    return-void
.end method
