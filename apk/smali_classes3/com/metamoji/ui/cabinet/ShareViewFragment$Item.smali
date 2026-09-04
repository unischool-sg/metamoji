.class Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# static fields
.field public static final BLANK_TYPE:I = 0x3

.field public static final DATE_TYPE:I = 0x2

.field public static final DOCUMENT_TYPE:I = 0x0

.field public static final HEADER_TYPE:I = 0x1

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private _metadata:Ljava/lang/Object;

.field private _thumbnailPath:Ljava/lang/String;

.field private _type:I

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method static bridge synthetic -$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_metadata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_type(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_type:I

    return p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_type:I

    .line 144
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_metadata:Ljava/lang/Object;

    .line 145
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_thumbnailPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetMetaData(Ljava/lang/Object;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_metadata:Ljava/lang/Object;

    return-void
.end method

.method public getDocInfo(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMemberNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOpenDate()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->_type:I

    return v0
.end method

.method public hasChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOwner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTitleCache(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
