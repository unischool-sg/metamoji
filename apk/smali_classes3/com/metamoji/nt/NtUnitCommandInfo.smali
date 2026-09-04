.class public Lcom/metamoji/nt/NtUnitCommandInfo;
.super Ljava/lang/Object;
.source "NtUnitCommandInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/nt/NtUnitCommandInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private command:Lcom/metamoji/nt/NtCommand;

.field private displayName:Ljava/lang/String;

.field private extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private validOnSingleSelection:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    .line 25
    iput-object p2, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->displayName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->extInfos:Ljava/util/Map;

    .line 27
    iput-boolean p4, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->validOnSingleSelection:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/nt/NtUnitCommandInfo;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    iget-object p1, p1, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommand;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/metamoji/nt/NtUnitCommandInfo;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitCommandInfo;->compareTo(Lcom/metamoji/nt/NtUnitCommandInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/metamoji/nt/NtUnitCommandInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    check-cast p1, Lcom/metamoji/nt/NtUnitCommandInfo;

    iget-object p1, p1, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommand;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCommand()Lcom/metamoji/nt/NtCommand;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->extInfos:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtCommand;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValidOnSingleSelection()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitCommandInfo;->validOnSingleSelection:Z

    return v0
.end method
