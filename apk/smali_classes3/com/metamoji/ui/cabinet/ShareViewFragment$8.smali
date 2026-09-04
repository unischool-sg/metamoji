.class Lcom/metamoji/ui/cabinet/ShareViewFragment$8;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->prepareCategoryChangeButton()V
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

    .line 953
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 957
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v0

    .line 958
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_categoryGrp(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->getButtonIndex(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 961
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_categoryGrp(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p1

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    aget-object p1, v0, p1

    invoke-static {v1, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;)V

    .line 964
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ordinal()I

    move-result v0

    const-string v1, "MMJNtCabinetShareViewMode"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 967
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Z)V

    return-void
.end method
