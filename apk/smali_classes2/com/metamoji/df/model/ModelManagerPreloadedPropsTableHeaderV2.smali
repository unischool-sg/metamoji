.class public Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;
.super Lcom/metamoji/cm/Structured;
.source "ModelManagerPreloadedPropsTableHeaderV2.java"


# static fields
.field public static final SIZE:I

.field public static final modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

.field public static final versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/metamoji/cm/Structured$MemberBuilder;

    invoke-direct {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint64LE()Lcom/metamoji/cm/Structured$UInt64LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    .line 26
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->uint64LE()Lcom/metamoji/cm/Structured$UInt64LEMember;

    move-result-object v1

    sput-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    .line 28
    invoke-virtual {v0}, Lcom/metamoji/cm/Structured$MemberBuilder;->offset()I

    move-result v0

    sput v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/Structured;-><init>([BI)V

    return-void
.end method
