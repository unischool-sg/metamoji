.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    if-lez p5, :cond_0

    .line 223
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p5}, Landroidx/appcompat/widget/AppCompatTextView;->setHeight(I)V

    .line 224
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
