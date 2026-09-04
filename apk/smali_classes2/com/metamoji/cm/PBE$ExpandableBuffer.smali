.class Lcom/metamoji/cm/PBE$ExpandableBuffer;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandableBuffer"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLength:I

.field final synthetic this$0:Lcom/metamoji/cm/PBE;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/PBE;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->this$0:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit16 p2, p2, 0x80

    .line 209
    iput p2, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mLength:I

    .line 210
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mBuffer:[B

    return-void
.end method


# virtual methods
.method getBuffer(I)[B
    .locals 1

    .line 214
    iget v0, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mLength:I

    if-ge v0, p1, :cond_0

    add-int/lit16 p1, p1, 0x80

    .line 215
    iput p1, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mLength:I

    .line 216
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mBuffer:[B

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/metamoji/cm/PBE$ExpandableBuffer;->mBuffer:[B

    return-object p1
.end method
