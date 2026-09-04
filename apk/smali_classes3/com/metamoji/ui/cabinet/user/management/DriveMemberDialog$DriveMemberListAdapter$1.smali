.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$item:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;Landroid/widget/CheckBox;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->val$item:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 359
    instance-of p1, p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->val$item:Ljava/util/Map;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
