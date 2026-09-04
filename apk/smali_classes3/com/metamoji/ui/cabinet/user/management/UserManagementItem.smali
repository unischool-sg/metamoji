.class public Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;
.super Ljava/lang/Object;
.source "UserManagementItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;,
        Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;
    }
.end annotation


# instance fields
.field _groupIndex:I

.field _isAlreadyAdded:Z

.field _isChecked:Z

.field _name:Ljava/lang/String;

.field _titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

.field _type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 29
    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    .line 30
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_groupIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 62
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    iget-object v2, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public initAsAddress(Ljava/lang/String;Z)V
    .locals 1

    .line 35
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 38
    sget-object p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_groupIndex:I

    return-void
.end method

.method public initAsGroup(Ljava/lang/String;I)V
    .locals 1

    .line 44
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 45
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 47
    sget-object p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    .line 48
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_groupIndex:I

    return-void
.end method

.method public initAsTitle(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 54
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 56
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    .line 57
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_groupIndex:I

    return-void
.end method

.method public isCheckedAddress()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
