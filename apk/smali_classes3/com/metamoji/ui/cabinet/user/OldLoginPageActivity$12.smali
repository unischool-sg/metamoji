.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$12;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 705
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$12;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 708
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$12;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1, p3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$midNumberComboBox_selectionChanged(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
