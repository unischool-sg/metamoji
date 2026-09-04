.class public Lcom/metamoji/cm/Structured$MemberBuilder;
.super Ljava/lang/Object;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/Structured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberBuilder"
.end annotation


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-void
.end method


# virtual methods
.method public float32LE()Lcom/metamoji/cm/Structured$Float32LEMember;
    .locals 2

    .line 300
    new-instance v0, Lcom/metamoji/cm/Structured$Float32LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$Float32LEMember;-><init>(I)V

    .line 301
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public float64LE()Lcom/metamoji/cm/Structured$Float64LEMember;
    .locals 2

    .line 306
    new-instance v0, Lcom/metamoji/cm/Structured$Float64LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$Float64LEMember;-><init>(I)V

    .line 307
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public offset()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return v0
.end method

.method public sint16LE()Lcom/metamoji/cm/Structured$SInt16LEMember;
    .locals 2

    .line 264
    new-instance v0, Lcom/metamoji/cm/Structured$SInt16LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$SInt16LEMember;-><init>(I)V

    .line 265
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;
    .locals 2

    .line 276
    new-instance v0, Lcom/metamoji/cm/Structured$SInt32LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$SInt32LEMember;-><init>(I)V

    .line 277
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public sint64LE()Lcom/metamoji/cm/Structured$SInt64LEMember;
    .locals 2

    .line 288
    new-instance v0, Lcom/metamoji/cm/Structured$SInt64LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$SInt64LEMember;-><init>(I)V

    .line 289
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public sint8LE()Lcom/metamoji/cm/Structured$SInt8LEMember;
    .locals 2

    .line 252
    new-instance v0, Lcom/metamoji/cm/Structured$SInt8LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$SInt8LEMember;-><init>(I)V

    .line 253
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public uint16LE()Lcom/metamoji/cm/Structured$UInt16LEMember;
    .locals 2

    .line 270
    new-instance v0, Lcom/metamoji/cm/Structured$UInt16LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$UInt16LEMember;-><init>(I)V

    .line 271
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public uint32LE()Lcom/metamoji/cm/Structured$UInt32LEMember;
    .locals 2

    .line 282
    new-instance v0, Lcom/metamoji/cm/Structured$UInt32LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$UInt32LEMember;-><init>(I)V

    .line 283
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public uint64LE()Lcom/metamoji/cm/Structured$UInt64LEMember;
    .locals 2

    .line 294
    new-instance v0, Lcom/metamoji/cm/Structured$UInt64LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$UInt64LEMember;-><init>(I)V

    .line 295
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method

.method public uint8LE()Lcom/metamoji/cm/Structured$UInt8LEMember;
    .locals 2

    .line 258
    new-instance v0, Lcom/metamoji/cm/Structured$UInt8LEMember;

    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    invoke-direct {v0, v1}, Lcom/metamoji/cm/Structured$UInt8LEMember;-><init>(I)V

    .line 259
    iget v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/cm/Structured$MemberBuilder;->offset:I

    return-object v0
.end method
