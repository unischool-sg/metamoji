.class public Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;
.super Lcom/metamoji/cm/Structured;
.source "ModelManagerPreloadedPropsTableHeaderV1.java"


# static fields
.field public static final SIZE:I

.field public static final modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/metamoji/cm/Structured$MemberBuilder;

    invoke-direct {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;-><init>()V

    .line 22
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint64LE()Lcom/metamoji/cm/Structured$UInt64LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    .line 24
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->offset()I

    move-result v0

    sput v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;->SIZE:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/Structured;-><init>([BI)V

    return-void
.end method
