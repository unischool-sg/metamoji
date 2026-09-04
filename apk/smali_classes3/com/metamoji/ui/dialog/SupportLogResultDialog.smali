.class public final Lcom/metamoji/ui/dialog/SupportLogResultDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SupportLogResultDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;,
        Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogResultDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "_model",
        "Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;",
        "get_model",
        "()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;",
        "_model$delegate",
        "Lkotlin/Lazy;",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "copyToClipboard",
        "MyViewModel",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;

.field public static final DEFAULT_TASK_NAME:Ljava/lang/String; = "SupportLogResultDialog"


# instance fields
.field private final _model$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 43
    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/SupportLogResultDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->_model$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final _model_delegate$lambda$0(Lcom/metamoji/ui/dialog/SupportLogResultDialog;)Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;
    .locals 1

    .line 43
    sget-object v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->getImmortalTaskName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;->instanceOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final copyToClipboard()V
    .locals 5

    .line 72
    sget v0, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_DATE_LABEL:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->getFormattedDate()Ljava/lang/String;

    move-result-object v1

    .line 73
    sget v2, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_KEY_LABEL:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Landroid/content/ClipboardManager;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/content/ClipboardManager;

    :cond_1
    if-nez v2, :cond_2

    return-void

    .line 76
    :cond_2
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method static final createBodyView$lambda$2$lambda$1(Lcom/metamoji/ui/dialog/SupportLogResultDialog;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->copyToClipboard()V

    return-void
.end method

.method private final get_model()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->_model$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    return-object v0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 2

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_support_log_result:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/metamoji/noteanytime/R$id;->date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->getFormattedDate()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget p2, Lcom/metamoji/noteanytime/R$id;->logid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget p2, Lcom/metamoji/noteanytime/R$id;->copy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 66
    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/SupportLogResultDialog;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public preCreateBodyView()V
    .locals 7

    .line 46
    sget v0, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_REPORT_DONE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setTitle(Ljava/lang/String;)V

    .line 47
    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setCancellable(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 52
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void

    :cond_0
    const/16 v0, 0x12c

    .line 54
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setLimitWidth(I)V

    .line 55
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void
.end method
