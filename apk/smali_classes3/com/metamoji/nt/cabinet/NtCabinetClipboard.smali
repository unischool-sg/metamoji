.class public Lcom/metamoji/nt/cabinet/NtCabinetClipboard;
.super Ljava/lang/Object;
.source "NtCabinetClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;
    }
.end annotation


# static fields
.field public static final Mode_Copy:I = 0x1

.field public static final Mode_Move:I = 0x2

.field public static final Type_Folder:I = 0x1

.field public static final Type_None:I = 0x0

.field public static final Type_Note:I = 0x2

.field private static _data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;-><init>()V

    sput-object v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    const/4 v1, 0x0

    .line 45
    iput v1, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData()V
    .locals 2

    .line 85
    sget-object v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    iput v1, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    :cond_0
    return-void
.end method

.method public static getData()Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;
    .locals 1

    .line 80
    sget-object v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    return-object v0
.end method

.method public static hasData()Z
    .locals 1

    .line 51
    sget-object v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p0, p1, v0, p3, p4}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setData(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput p0, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    .line 72
    sget-object p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput p1, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_mode:I

    .line 73
    sget-object p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_objectIDs:Ljava/util/List;

    .line 74
    sget-object p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p3, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    .line 75
    sget-object p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->_data:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p4, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    return-void
.end method
