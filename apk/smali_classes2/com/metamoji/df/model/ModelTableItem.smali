.class public Lcom/metamoji/df/model/ModelTableItem;
.super Lcom/metamoji/cm/Structured;
.source "ModelTableItem.java"


# static fields
.field public static final SIZE:I

.field public static final dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

.field public static final firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

.field public static final lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

.field public static final nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

.field public static final parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

.field public static final prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/metamoji/cm/Structured$MemberBuilder;

    invoke-direct {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;-><init>()V

    .line 40
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint64LE()Lcom/metamoji/cm/Structured$UInt64LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    .line 41
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    .line 42
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    .line 43
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    .line 44
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->sint32LE()Lcom/metamoji/cm/Structured$SInt32LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    .line 47
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->offset()I

    move-result v0

    sput v0, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/Structured;-><init>([BI)V

    return-void
.end method
