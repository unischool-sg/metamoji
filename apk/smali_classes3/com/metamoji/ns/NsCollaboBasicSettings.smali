.class public Lcom/metamoji/ns/NsCollaboBasicSettings;
.super Ljava/lang/Object;
.source "NsCollaboBasicSettings.java"


# instance fields
.field public allowToChangeGroupByStudent:Z

.field public allowToEditOthersWritings:Z

.field public allowToJoinNote:Z

.field public allowToOperationPage:Z

.field public allowToSaveNoteAndCopyPage:Z

.field public companyId:Ljava/lang/String;

.field public ownerDcUserId:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomPassword:Ljava/lang/String;

.field public secureRoom:Z

.field public shareType:Ljava/lang/String;

.field public submitterDcUserId:Ljava/lang/String;

.field public submitterNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZ)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 57
    invoke-direct/range {v0 .. v10}, Lcom/metamoji/ns/NsCollaboBasicSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->roomId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->roomPassword:Ljava/lang/String;

    .line 89
    iput-object p10, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->companyId:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->ownerDcUserId:Ljava/lang/String;

    .line 92
    iput-boolean p4, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->secureRoom:Z

    .line 95
    iput-boolean p5, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToJoinNote:Z

    .line 96
    iput-boolean p6, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToOperationPage:Z

    .line 98
    iput-boolean p9, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToSaveNoteAndCopyPage:Z

    .line 101
    iput-boolean p7, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToEditOthersWritings:Z

    .line 104
    iput-boolean p8, p0, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToChangeGroupByStudent:Z

    return-void
.end method
