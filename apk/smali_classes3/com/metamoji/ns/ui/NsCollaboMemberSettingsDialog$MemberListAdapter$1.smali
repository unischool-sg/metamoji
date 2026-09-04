.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V
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

    .line 141
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    if-eqz p2, :cond_0

    .line 145
    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    return-void
.end method
