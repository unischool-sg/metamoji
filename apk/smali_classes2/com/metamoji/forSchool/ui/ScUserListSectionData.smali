.class public Lcom/metamoji/forSchool/ui/ScUserListSectionData;
.super Ljava/lang/Object;
.source "ScUserListSectionData.java"


# instance fields
.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public isOffline:Z

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->visible:Z

    .line 11
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->isOffline:Z

    return-void
.end method
