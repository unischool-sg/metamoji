.class public Lcom/metamoji/nt/pm/PmCentre;
.super Ljava/lang/Object;
.source "PmCentre.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pm/PmCentre$UserDefaultsKey;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detox(Ljava/lang/String;)V
    .locals 6

    .line 106
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 108
    const-string v1, "PMTYPLST"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    .line 112
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    invoke-static {p0}, Lcom/metamoji/nt/pm/PmCentre;->vomit(Ljava/lang/String;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5, v4}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->detox(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static eat(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/nt/pm/PmPoisonousMushroom;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->create(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->isAntidote()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/pm/PmCentre;->detox(Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->eat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->getType()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 50
    const-string v2, "PMTYPLST"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getGenom(Lcom/metamoji/cm/CmContext;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/CmContext;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/metamoji/cm/CmContext;->extraData()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->create(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->genom()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static medicalCheck()V
    .locals 8

    .line 75
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 77
    const-string v1, "PMTYPLST"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ltz v3, :cond_2

    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 83
    invoke-static {v7}, Lcom/metamoji/nt/pm/PmCentre;->vomit(Ljava/lang/String;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 84
    invoke-virtual {v7, v5}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->detox(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v6, v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_4

    .line 91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static vomit(Ljava/lang/String;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 0

    .line 140
    invoke-static {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->create(Ljava/lang/String;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object p0

    return-object p0
.end method
