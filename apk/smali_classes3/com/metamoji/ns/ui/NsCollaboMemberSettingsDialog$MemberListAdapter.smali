.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NsCollaboMemberSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 113
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method getGroupSpinnerPosition(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I
    .locals 5

    .line 316
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 319
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;

    .line 320
    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->groupId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 321
    iget-object v4, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemColor(I)I
    .locals 3

    .line 284
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 285
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 286
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 288
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_member_settings_listitem:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 125
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->labelText:Ljava/lang/String;

    .line 126
    iget v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->role:I

    .line 127
    iget-boolean v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isOwner:Z

    .line 128
    iget-boolean v2, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isMyself:Z

    .line 131
    sget v3, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 141
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 136
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->address:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 159
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;

    invoke-direct {v0, p0, v3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 166
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$3;

    invoke-direct {v0, p0, v3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget v0, Lcom/metamoji/noteanytime/R$id;->scrollView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 175
    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->backgroundColorArray()[I

    move-result-object v1

    move v2, v6

    .line 189
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    if-lt v2, v4, :cond_3

    goto :goto_3

    .line 195
    :cond_3
    aget v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItemColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    :cond_4
    :goto_3
    array-length v2, v1

    if-le v2, v4, :cond_5

    sub-int/2addr v2, v5

    .line 201
    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItemColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_5
    iget-object v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v2, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getIndexForGroupId(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-ltz v1, :cond_6

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_6
    const/16 v0, 0xff

    .line 208
    invoke-static {v6, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    :goto_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->groupSelectSpinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 212
    sget v1, Lcom/metamoji/noteanytime/R$id;->teacherLabel:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->isPresenter(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    .line 215
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    return-object p2

    .line 218
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->isEnabledGroupSelectSpinner(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 222
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 223
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 224
    check-cast v2, Ljava/util/Map;

    .line 225
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 229
    :cond_8
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 230
    sget v2, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Label_NoGroup:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 232
    :cond_9
    const-string v4, "group-name"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    :goto_6
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;

    iget-object v7, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {v5, v7, v3, v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 238
    :cond_a
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 239
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;

    .line 240
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 243
    :cond_b
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getGroupSpinnerPosition(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I

    move-result v1

    .line 245
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    invoke-virtual {v0, v1, v6}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 250
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p2
.end method

.method isEnabledGroupSelectSpinner(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)Z
    .locals 4

    .line 301
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 305
    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method isPresenter(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)Z
    .locals 0

    .line 292
    iget p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->role:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
