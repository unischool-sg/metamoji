.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrganizationItem"
.end annotation


# instance fields
.field private _deletable:Z

.field private _id:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 54
    :goto_1
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_name:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    .line 55
    :goto_2
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 59
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_deletable:Z

    return-void

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 63
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_deletable:Z

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_deletable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 133
    :cond_2
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 134
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 138
    :cond_3
    iget-object v3, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 142
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 145
    :cond_5
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 113
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_deletable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"id\" : \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"name\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"url\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
