.class Lcom/metamoji/un/text/UnTextUnit$35;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->commandInsertBulletedList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/SelectBulletedListChar;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/SelectBulletedListChar;)V
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

    .line 7530
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$35;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$35;->val$dlg:Lcom/metamoji/ui/dialog/SelectBulletedListChar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 7534
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$35;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7536
    new-instance p2, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 7537
    iget-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$35;->val$dlg:Lcom/metamoji/ui/dialog/SelectBulletedListChar;

    invoke-virtual {p3}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->getBulletedChar()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setBulletedChar(Ljava/lang/String;)V

    .line 7540
    sget-object p3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {p3, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V

    :cond_0
    return-void
.end method
