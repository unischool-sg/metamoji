.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;
.source "AbstractTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;-><init>()V

    return-void
.end method


# virtual methods
.method public refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
