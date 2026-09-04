.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$6;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 208
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$6;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$6;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->handleUseEndDateSwitchChanged(Z)V

    return-void
.end method
