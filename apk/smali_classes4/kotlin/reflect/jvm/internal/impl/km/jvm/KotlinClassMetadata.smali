.class public abstract Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.super Ljava/lang/Object;
.source "KotlinClassMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;


# instance fields
.field private isAllowedToWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;->Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;->isAllowedToWrite:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAllowedToWrite$kotlin_metadata_jvm(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;->isAllowedToWrite:Z

    return-void
.end method
