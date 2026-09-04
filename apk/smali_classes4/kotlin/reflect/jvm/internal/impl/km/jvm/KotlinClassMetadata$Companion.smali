.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;
.super Ljava/lang/Object;
.source "KotlinClassMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readLenient(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->readMetadataImpl$kotlin_metadata_jvm(Lkotlin/Metadata;Z)Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    move-result-object p1

    return-object p1
.end method
