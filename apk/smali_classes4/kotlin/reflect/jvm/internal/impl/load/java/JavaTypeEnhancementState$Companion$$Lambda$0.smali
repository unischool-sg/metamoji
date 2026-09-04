.class Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$0:Lkotlin/KotlinVersion;


# direct methods
.method public constructor <init>(Lkotlin/KotlinVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$$Lambda$0;->arg$0:Lkotlin/KotlinVersion;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$$Lambda$0;->arg$0:Lkotlin/KotlinVersion;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;->accessor$JavaTypeEnhancementState$Companion$lambda0(Lkotlin/KotlinVersion;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p1

    return-object p1
.end method
