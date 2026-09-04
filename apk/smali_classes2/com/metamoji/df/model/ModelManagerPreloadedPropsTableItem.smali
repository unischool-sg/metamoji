.class public Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;
.super Lcom/metamoji/cm/Structured;
.source "ModelManagerPreloadedPropsTableItem.java"


# static fields
.field public static final SIZE:I

.field public static final flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

.field public static final flagsV1:Lcom/metamoji/cm/Structured$UInt8LEMember;

.field public static final typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

.field public static final version:Lcom/metamoji/cm/Structured$UInt16LEMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/metamoji/cm/Structured$MemberBuilder;

    invoke-direct {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint16LE()Lcom/metamoji/cm/Structured$UInt16LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    .line 32
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint8LE()Lcom/metamoji/cm/Structured$UInt8LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    .line 33
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint8LE()Lcom/metamoji/cm/Structured$UInt8LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsV1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    .line 34
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint16LE()Lcom/metamoji/cm/Structured$UInt16LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->offset()I

    move-result v0

    sput v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/Structured;-><init>([BI)V

    return-void
.end method
