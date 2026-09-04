.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

.field final synthetic val$btn:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Landroid/widget/CheckBox;)V
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

    .line 159
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;->val$btn:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;->val$btn:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
