.class Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScMonitorInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Landroid/content/Context;)V
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

    .line 67
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 69
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method createClassListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;)Landroid/view/View;
    .locals 8

    .line 89
    iget-object v0, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->type:Ljava/lang/String;

    .line 90
    const-string v1, "sectionHelp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 93
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    .line 94
    sget v1, Lcom/metamoji/noteanytime/R$color;->white:I

    goto/16 :goto_1

    .line 95
    :cond_0
    const-string v1, "userHelp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_normal:I

    .line 98
    sget v1, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    :goto_0
    move v2, v3

    goto :goto_1

    .line 99
    :cond_1
    const-string v1, "sectionNotYet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_normal:I

    .line 104
    sget v1, Lcom/metamoji/noteanytime/R$color;->dialog_text:I

    goto :goto_1

    .line 105
    :cond_2
    const-string v1, "userNotYet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_normal:I

    .line 108
    sget v1, Lcom/metamoji/noteanytime/R$color;->dialog_text:I

    goto :goto_0

    .line 109
    :cond_3
    const-string v1, "sectionDoIt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    .line 113
    sget v1, Lcom/metamoji/noteanytime/R$color;->white:I

    goto :goto_1

    .line 114
    :cond_4
    const-string v1, "userDoIt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_normal:I

    .line 117
    sget v1, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    goto :goto_0

    .line 118
    :cond_5
    const-string v1, "sectionOffline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_OFFLINE:I

    .line 122
    sget v1, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_offline:I

    goto :goto_1

    .line 123
    :cond_6
    const-string v1, "userOffline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_offline:I

    .line 126
    sget v1, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_offline:I

    const v4, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_7
    move v0, v3

    move v1, v0

    move v2, v1

    .line 130
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 132
    sget v6, Lcom/metamoji/noteanytime/R$id;->content_view:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 133
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    sget v0, Lcom/metamoji/noteanytime/R$id;->name_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v4, 0x8

    .line 138
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    sget v6, Lcom/metamoji/noteanytime/R$id;->title_view:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 142
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    sget v7, Lcom/metamoji/noteanytime/R$id;->num_view:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_8

    .line 150
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorInfoDlg_UserNum:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "%ld"

    const-string v2, "%d"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget p2, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->num:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 160
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object p2, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    if-nez p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_user_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->createClassListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
