.class Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Header"
.end annotation


# instance fields
.field private _count:I

.field private _title:Ljava/lang/String;

.field private _type:I

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;IILjava/lang/String;)V
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

    .line 267
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_type:I

    .line 269
    iput p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_count:I

    .line 270
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_count:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->_type:I

    return v0
.end method
