.class public abstract Lcom/metamoji/sd/entities/SdManagedObject;
.super Ljava/lang/Object;
.source "SdManagedObject.java"


# instance fields
.field private m_pkey:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_pkey"
        generatedId = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkey()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdManagedObject;->m_pkey:Ljava/lang/Integer;

    return-object v0
.end method

.method public setPkey(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdManagedObject;->m_pkey:Ljava/lang/Integer;

    return-void
.end method
