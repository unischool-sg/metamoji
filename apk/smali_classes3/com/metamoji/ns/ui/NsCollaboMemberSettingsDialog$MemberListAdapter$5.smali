.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 250
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

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

    .line 253
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;

    .line 254
    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->groupId:Ljava/lang/String;

    .line 255
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p3, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p3, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_0

    .line 258
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->val$itemData:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p3, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p3, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 263
    iget p5, p4, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->role:I

    if-nez p5, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p3, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {p3, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$mhandleChangedGroup(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/util/List;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

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
