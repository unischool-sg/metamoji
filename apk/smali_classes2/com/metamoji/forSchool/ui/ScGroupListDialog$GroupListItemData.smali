.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;
.super Ljava/lang/Object;
.source "ScGroupListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupListItemData"
.end annotation


# instance fields
.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public isManageMode:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->isManageMode:Z

    .line 86
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupId:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    return-void
.end method
