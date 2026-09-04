.class Lcom/metamoji/ui/dialog/DocumentSettings2$1;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Ljava/lang/Boolean;Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 321
    check-cast p1, Lcom/metamoji/ui/dialog/DocumentSettings2;

    .line 322
    check-cast p2, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;

    .line 323
    iget-object p0, p2, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->titleRule:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setTitleRule(Ljava/lang/String;)V

    .line 324
    iget-object p0, p1, Lcom/metamoji/ui/dialog/DocumentSettings2;->_titleRuleBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTitleRule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 316
    new-instance p1, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTitleRule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->titleRule:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialogTask;

    const-class v1, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
