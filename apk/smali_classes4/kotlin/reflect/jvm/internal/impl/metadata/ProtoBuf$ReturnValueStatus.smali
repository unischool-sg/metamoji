.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;
.super Ljava/lang/Enum;
.source "ProtoBuf.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnValueStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

.field public static final enum EXPLICITLY_IGNORABLE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

.field public static final enum MUST_USE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

.field public static final enum UNSPECIFIED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

.field private static internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 283
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->UNSPECIFIED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    .line 287
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    const-string v2, "MUST_USE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->MUST_USE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    .line 296
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    const-string v3, "EXPLICITLY_IGNORABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->EXPLICITLY_IGNORABLE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    .line 278
    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    .line 334
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->EXPLICITLY_IGNORABLE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    return-object p0

    .line 323
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->MUST_USE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    return-object p0

    .line 322
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->UNSPECIFIED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;
    .locals 1

    .line 278
    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;
    .locals 1

    .line 278
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 318
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ReturnValueStatus;->value:I

    return v0
.end method
